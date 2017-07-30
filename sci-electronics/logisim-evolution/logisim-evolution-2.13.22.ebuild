EAPI=6

inherit eutils java-pkg-2 java-ant-2

DESCRIPTION="Digital logic designer and simulator."
HOMEPAGE="https://github.com/reds-heig/logisim-evolution"
SRC_URI="https://github.com/reds-heig/logisim-evolution/archive/2.13.22.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="java nls"

DEPEND=">=virtual/jdk-1.7"
RDEPEND=">=virtual/jre-1.7 ${DEPEND}"

S="${WORKDIR}/${P}"

src_compile() {
	# Remove ALL .class and .jar files
	ant cleanall
	# Build logisim-evolution.jar
	ant jar
}

src_install() {
	java-pkg_newjar logisim-evolution.jar ${PN}.jar
	java-pkg_dojar logisim-evolution.jar
	java-pkg_dolauncher logisim-evolution -jar logisim-evolution.jar
}

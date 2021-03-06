# Created by: Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD$

PORTNAME=	pew
PORTVERSION=	1.2.0
CATEGORIES=	devel python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
MASTER_SITES=	CHEESESHOP

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Tool to manage multiple virtualenvs

LICENSE=	MIT

RUN_DEPENDS=	${PY_PATHLIB} \
		${PYTHON_PKGNAMEPREFIX}virtualenv>=1.11:devel/py-virtualenv@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}virtualenv-clone>=0.2.5:devel/py-virtualenv-clone@${PY_FLAVOR}

USES=		python shebangfix
USE_PYTHON=	autoplist concurrent distutils

NO_ARCH=	yes

SHEBANG_FILES=	pew/shell_config/complete_deploy

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} < 3000
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}backports.shutil_get_terminal_size>=0:devel/py-backports.shutil_get_terminal_size@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}shutilwhich>=0:sysutils/py-shutilwhich@${PY_FLAVOR}
.endif

.include <bsd.port.post.mk>

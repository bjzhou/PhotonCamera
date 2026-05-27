.class abstract Lj$/nio/file/m;
.super Ljava/lang/Object;


# static fields
.field static final a:Lj$/nio/file/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/nio/file/l;

    invoke-direct {v0}, Lj$/nio/file/l;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/spi/c;

    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/nio/file/spi/c;->j(Ljava/net/URI;)Lj$/nio/file/k;

    move-result-object v0

    sput-object v0, Lj$/nio/file/m;->a:Lj$/nio/file/k;

    return-void
.end method

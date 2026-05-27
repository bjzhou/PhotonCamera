.class public final synthetic Lj$/nio/file/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/CopyOption;


# instance fields
.field public final synthetic a:Lj$/nio/file/e;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/d;->a:Lj$/nio/file/e;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/e;)Ljava/nio/file/CopyOption;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/c;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/c;

    iget-object p0, p0, Lj$/nio/file/c;->a:Ljava/nio/file/CopyOption;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/LinkOption;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/LinkOption;

    invoke-static {p0}, Lj$/nio/file/a;->d(Lj$/nio/file/LinkOption;)Ljava/nio/file/LinkOption;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lj$/nio/file/C;

    if-eqz v0, :cond_3

    check-cast p0, Lj$/nio/file/C;

    invoke-static {p0}, Lj$/nio/file/a;->e(Lj$/nio/file/C;)Ljava/nio/file/StandardCopyOption;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/d;

    invoke-direct {v0, p0}, Lj$/nio/file/d;-><init>(Lj$/nio/file/e;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/d;->a:Lj$/nio/file/e;

    instance-of v1, p1, Lj$/nio/file/d;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/d;

    iget-object p1, p1, Lj$/nio/file/d;->a:Lj$/nio/file/e;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/d;->a:Lj$/nio/file/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

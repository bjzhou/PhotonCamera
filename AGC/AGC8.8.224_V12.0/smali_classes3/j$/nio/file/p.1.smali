.class public final synthetic Lj$/nio/file/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/OpenOption;


# instance fields
.field public final synthetic a:Lj$/nio/file/q;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/p;->a:Lj$/nio/file/q;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/q;)Ljava/nio/file/OpenOption;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/o;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/o;

    iget-object p0, p0, Lj$/nio/file/o;->a:Ljava/nio/file/OpenOption;

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/nio/file/LinkOption;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/nio/file/LinkOption;

    invoke-static {p0}, Lj$/nio/file/a;->d(Lj$/nio/file/LinkOption;)Ljava/nio/file/LinkOption;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lj$/nio/file/D;

    if-eqz v0, :cond_3

    check-cast p0, Lj$/nio/file/D;

    invoke-static {p0}, Lj$/nio/file/a;->f(Lj$/nio/file/D;)Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lj$/nio/file/p;

    invoke-direct {v0, p0}, Lj$/nio/file/p;-><init>(Lj$/nio/file/q;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/p;->a:Lj$/nio/file/q;

    instance-of v1, p1, Lj$/nio/file/p;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/p;

    iget-object p1, p1, Lj$/nio/file/p;->a:Lj$/nio/file/q;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/p;->a:Lj$/nio/file/q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

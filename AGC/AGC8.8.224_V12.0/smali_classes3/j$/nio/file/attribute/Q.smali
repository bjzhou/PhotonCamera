.class public final synthetic Lj$/nio/file/attribute/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/UserDefinedFileAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/S;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/S;)Ljava/nio/file/attribute/UserDefinedFileAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/P;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/P;

    iget-object p0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/Q;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/Q;-><init>(Lj$/nio/file/attribute/S;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic delete(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    check-cast v0, Lj$/nio/file/attribute/P;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/P;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    instance-of v1, p1, Lj$/nio/file/attribute/Q;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/Q;

    iget-object p1, p1, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic list()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    check-cast v0, Lj$/nio/file/attribute/P;

    invoke-virtual {v0}, Lj$/nio/file/attribute/P;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    check-cast v0, Lj$/nio/file/attribute/P;

    invoke-virtual {v0}, Lj$/nio/file/attribute/P;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    check-cast v0, Lj$/nio/file/attribute/P;

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/attribute/P;->f(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final synthetic size(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    check-cast v0, Lj$/nio/file/attribute/P;

    invoke-virtual {v0, p1}, Lj$/nio/file/attribute/P;->g(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final synthetic write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    check-cast v0, Lj$/nio/file/attribute/P;

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/attribute/P;->h(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

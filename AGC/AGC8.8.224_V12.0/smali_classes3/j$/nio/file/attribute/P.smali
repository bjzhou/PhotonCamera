.class public final synthetic Lj$/nio/file/attribute/P;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/attribute/S;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)Lj$/nio/file/attribute/S;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/Q;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/Q;

    iget-object p0, p0, Lj$/nio/file/attribute/Q;->a:Lj$/nio/file/attribute/S;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/P;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/P;-><init>(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/attribute/P;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/attribute/P;

    iget-object p1, p1, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1, p2}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final synthetic g(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->size(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1, p2}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/P;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lj$/nio/file/g;
.super Ljava/nio/file/FileStore;


# instance fields
.field public final synthetic a:Lj$/nio/file/h;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    iput-object p1, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/h;)Ljava/nio/file/FileStore;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/f;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/f;

    iget-object p0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/g;

    invoke-direct {v0, p0}, Lj$/nio/file/g;-><init>(Lj$/nio/file/h;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    instance-of v1, p1, Lj$/nio/file/g;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/g;

    iget-object p1, p1, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0, p1}, Lj$/nio/file/h;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getBlockSize()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Lj$/nio/file/h;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0, p1}, Lj$/nio/file/h;->e(Ljava/lang/Class;)Lj$/nio/file/attribute/C;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/B;->a(Lj$/nio/file/attribute/C;)Ljava/nio/file/attribute/FileStoreAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getTotalSpace()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Lj$/nio/file/h;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic getUnallocatedSpace()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Lj$/nio/file/h;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic getUsableSpace()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Lj$/nio/file/h;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Lj$/nio/file/h;->i()Z

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Lj$/nio/file/h;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic supportsFileAttributeView(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-static {p1}, Lj$/nio/file/a;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/h;->o(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final synthetic supportsFileAttributeView(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0, p1}, Lj$/nio/file/h;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final synthetic type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    invoke-virtual {v0}, Lj$/nio/file/h;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

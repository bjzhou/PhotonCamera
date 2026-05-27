.class public final synthetic Lj$/nio/file/f;
.super Lj$/nio/file/h;


# instance fields
.field public final synthetic e:Ljava/nio/file/FileStore;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/FileStore;)V
    .locals 0

    invoke-direct {p0}, Lj$/nio/file/h;-><init>()V

    iput-object p1, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    return-void
.end method

.method public static synthetic r(Ljava/nio/file/FileStore;)Lj$/nio/file/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/g;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/g;

    iget-object p0, p0, Lj$/nio/file/g;->a:Lj$/nio/file/h;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/f;

    invoke-direct {v0, p0}, Lj$/nio/file/f;-><init>(Ljava/nio/file/FileStore;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic e(Ljava/lang/Class;)Lj$/nio/file/attribute/C;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/A;->c(Ljava/nio/file/attribute/FileStoreAttributeView;)Lj$/nio/file/attribute/C;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/f;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/f;

    iget-object p1, p1, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic g()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getUnallocatedSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic h()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic i()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public final synthetic n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic o(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-static {p1}, Lj$/nio/file/a;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final synthetic p(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljava/nio/file/FileStore;->supportsFileAttributeView(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final synthetic q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/f;->e:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

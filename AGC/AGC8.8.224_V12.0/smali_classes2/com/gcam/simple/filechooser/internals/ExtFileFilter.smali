.class public Lcom/gcam/simple/filechooser/internals/ExtFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field a:Z

.field b:Z

.field c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-direct {p0, v0, v0, v1}, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;-><init>(ZZ[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;->a:Z

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;->b:Z

    iput-object p3, p0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;-><init>(ZZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;->c:[Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-static {p1}, Lcom/gcam/simple/filechooser/internals/FileUtil;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gcam/simple/filechooser/internals/ExtFileFilter;->c:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

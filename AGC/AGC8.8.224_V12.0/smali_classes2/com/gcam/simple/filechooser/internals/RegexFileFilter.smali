.class public Lcom/gcam/simple/filechooser/internals/RegexFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field c:Ljava/util/regex/Pattern;

.field directory:Z

.field hidden:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;-><init>(ZZLjava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->hidden:Z

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->directory:Z

    const/4 p1, 0x2

    invoke-static {p3, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->hidden:Z

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->directory:Z

    invoke-static {p3, p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ZZLjava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->hidden:Z

    iput-boolean p1, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->directory:Z

    iput-object p3, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->c:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->hidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->directory:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->c:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gcam/simple/filechooser/internals/RegexFileFilter;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

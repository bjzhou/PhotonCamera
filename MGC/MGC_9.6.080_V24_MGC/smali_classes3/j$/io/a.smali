.class final Lj$/io/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/io/BufferedReader;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/BufferedReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/io/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lj$/io/a;->a:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lj$/io/a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lj$/io/a;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/io/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/io/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/io/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/io/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lj$/io/a;->b:Ljava/lang/String;

    return-object v0
.end method

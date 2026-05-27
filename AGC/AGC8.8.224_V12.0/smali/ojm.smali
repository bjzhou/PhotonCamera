.class public final Lojm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field final synthetic c:Loob;

.field private final d:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lojm;->b:I

    return-void
.end method

.method public constructor <init>(Loob;[B)V
    .locals 1

    iput-object p1, p0, Lojm;->c:Loob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x2

    iput p2, p0, Lojm;->b:I

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lojm;->d:Ljava/util/ArrayDeque;

    iget-object v0, p1, Loob;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Loob;->a:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lojm;->b(Ljava/io/File;)Lolv;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p1, Loob;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lolw;

    iget-object p1, p1, Loob;->a:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-direct {v0, p1}, Lolw;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lojm;->a()V

    return-void
.end method

.method private static final b(Ljava/io/File;)Lolv;
    .locals 1

    new-instance v0, Lolv;

    invoke-direct {v0, p0}, Lolv;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lojm;->b:I

    return-void
.end method

.method public final hasNext()Z
    .locals 6

    iget v0, p0, Lojm;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Lojm;->b:I

    goto :goto_0

    :pswitch_1
    return v0

    :pswitch_2
    return v4

    :goto_0
    iget-object v1, p0, Lojm;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lolx;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lolx;->a()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lojm;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lolx;->a:Ljava/io/File;

    invoke-static {v2, v1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lojm;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const v5, 0x7fffffff

    if-lt v1, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lojm;->d:Ljava/util/ArrayDeque;

    invoke-static {v2}, Lojm;->b(Ljava/io/File;)Lolv;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_4

    iput-object v3, p0, Lojm;->a:Ljava/lang/Object;

    iput v4, p0, Lojm;->b:I

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lojm;->a()V

    :goto_3
    iget v1, p0, Lojm;->b:I

    if-ne v1, v4, :cond_5

    return v4

    :cond_5
    return v0

    :cond_6
    throw v3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lojm;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lojm;->b:I

    iget-object v0, p0, Lojm;->a:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

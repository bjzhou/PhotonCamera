.class Lbfb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lbfd;

.field public b:Lbfa;

.field private c:I

.field private d:Lbfi;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Iterator;

.field private g:I

.field private h:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 1

    iput-object p1, p0, Lbfb;->a:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lbfb;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    iput p1, p0, Lbfb;->g:I

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lbfb;->h:Ljava/util/Iterator;

    iput-object v0, p0, Lbfb;->b:Lbfa;

    return-void
.end method

.method public constructor <init>(Lbfd;Lbfi;Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lbfb;->a:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbfb;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lbfb;->f:Ljava/util/Iterator;

    iput v0, p0, Lbfb;->g:I

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lbfb;->h:Ljava/util/Iterator;

    iput-object v1, p0, Lbfb;->b:Lbfa;

    iput-object p2, p0, Lbfb;->d:Lbfi;

    iput v0, p0, Lbfb;->c:I

    invoke-virtual {p2}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lbfi;->a:Ljava/lang/String;

    iput-object v0, p1, Lbfd;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lbfb;->a(Lbfi;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbfb;->e:Ljava/lang/String;

    return-void
.end method

.method protected static final b(Lbfi;Ljava/lang/String;Ljava/lang/String;)Lbfa;
    .locals 2

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbfi;->b:Ljava/lang/String;

    :goto_0
    new-instance v1, Lbfa;

    invoke-direct {v1, p1, p2, v0, p0}, Lbfa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbfi;)V

    return-object v1
.end method

.method private final c(Ljava/util/Iterator;)Z
    .locals 5

    iget-object v0, p0, Lbfb;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfi;

    iget v0, p0, Lbfb;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lbfb;->g:I

    new-instance v2, Lbfb;

    iget-object v3, p0, Lbfb;->a:Lbfd;

    iget-object v4, p0, Lbfb;->e:Ljava/lang/String;

    invoke-direct {v2, v3, p1, v4, v0}, Lbfb;-><init>(Lbfd;Lbfi;Ljava/lang/String;I)V

    iput-object v2, p0, Lbfb;->h:Ljava/util/Iterator;

    :cond_0
    iget-object p1, p0, Lbfb;->h:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbfb;->h:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfa;

    iput-object p1, p0, Lbfb;->b:Lbfa;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected final a(Lbfi;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lbfi;->c:Lbfi;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lbfi;->c:Lbfi;

    invoke-virtual {v0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lbfi;->a:Ljava/lang/String;

    const-string p3, "/"

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbfb;->a:Lbfd;

    iget-object v0, v0, Lbfd;->a:Lbfp;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lbfq;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lbfb;->b:Lbfa;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lbfb;->c:I

    if-nez v0, :cond_3

    iput v1, p0, Lbfb;->c:I

    iget-object v0, p0, Lbfb;->d:Lbfi;

    iget-object v2, v0, Lbfi;->c:Lbfi;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbfb;->a:Lbfd;

    iget-object v2, v2, Lbfd;->a:Lbfp;

    invoke-virtual {v2}, Lbfp;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbfi;->s()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbfb;->d:Lbfi;

    iget-object v2, p0, Lbfb;->a:Lbfd;

    iget-object v2, v2, Lbfd;->b:Ljava/lang/String;

    iget-object v3, p0, Lbfb;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lbfb;->b(Lbfi;Ljava/lang/String;Ljava/lang/String;)Lbfa;

    move-result-object v0

    iput-object v0, p0, Lbfb;->b:Lbfa;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lbfb;->hasNext()Z

    move-result v1

    :goto_0
    return v1

    :cond_3
    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    if-nez v0, :cond_4

    iget-object v0, p0, Lbfb;->d:Lbfi;

    invoke-virtual {v0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    :cond_4
    iget-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Lbfb;->c(Ljava/util/Iterator;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lbfb;->d:Lbfi;

    invoke-virtual {v1}, Lbfi;->t()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbfb;->a:Lbfd;

    iget-object v1, v1, Lbfd;->a:Lbfp;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lbfq;->h(I)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lbfb;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    invoke-virtual {p0}, Lbfb;->hasNext()Z

    move-result v0

    :cond_5
    return v0

    :cond_6
    iget-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    if-nez v0, :cond_7

    iget-object v0, p0, Lbfb;->d:Lbfi;

    invoke-virtual {v0}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    :cond_7
    iget-object v0, p0, Lbfb;->f:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Lbfb;->c(Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lbfb;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfb;->b:Lbfa;

    const/4 v1, 0x0

    iput-object v1, p0, Lbfb;->b:Lbfa;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no more nodes to return"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class public final Lmqo;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lmqn;

.field private d:Lmqn;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmqn;

    invoke-direct {v0}, Lmqn;-><init>()V

    iput-object v0, p0, Lmqo;->c:Lmqn;

    iput-object v0, p0, Lmqo;->d:Lmqn;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmqo;->a:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmqo;->b:Ljava/lang/String;

    return-void
.end method

.method private final g()Lmqn;
    .locals 2

    new-instance v0, Lmqn;

    invoke-direct {v0}, Lmqn;-><init>()V

    iget-object v1, p0, Lmqo;->d:Lmqn;

    iput-object v0, v1, Lmqn;->c:Lmqn;

    iput-object v0, p0, Lmqo;->d:Lmqn;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lmqo;->g()Lmqn;

    move-result-object v0

    iput-object p1, v0, Lmqn;->b:Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lmqo;->g()Lmqn;

    move-result-object v0

    iput-object p2, v0, Lmqn;->b:Ljava/lang/Object;

    iput-object p1, v0, Lmqn;->a:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lmqm;

    invoke-direct {v0}, Lmqm;-><init>()V

    iget-object v1, p0, Lmqo;->d:Lmqn;

    iput-object v0, v1, Lmqn;->c:Lmqn;

    iput-object v0, p0, Lmqo;->d:Lmqn;

    iput-object p2, v0, Lmqm;->b:Ljava/lang/Object;

    iput-object p1, v0, Lmqm;->a:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmqo;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmqo;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmqo;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lmqo;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lmqo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmqo;->c:Lmqn;

    iget-object v2, v2, Lmqn;->c:Lmqn;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, v2, Lmqn;->b:Ljava/lang/Object;

    instance-of v5, v2, Lmqm;

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lmqn;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    :cond_3
    iget-object v2, v2, Lmqn;->c:Lmqn;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

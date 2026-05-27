.class final Lpz;
.super Lpx;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lqe;

.field final synthetic c:Lqa;


# direct methods
.method public constructor <init>(Lqa;Ljava/lang/String;Lqe;)V
    .locals 0

    iput-object p1, p0, Lpz;->c:Lqa;

    iput-object p2, p0, Lpz;->a:Ljava/lang/String;

    iput-object p3, p0, Lpz;->b:Lqe;

    invoke-direct {p0}, Lpx;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lpz;->c:Lqa;

    iget-object v1, p0, Lpz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqa;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lpz;->c:Lqa;

    iget-object v0, v0, Lqa;->c:Ljava/util/Map;

    iget-object v1, p0, Lpz;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpz;->c:Lqa;

    iget-object v1, v1, Lqa;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lpz;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lpz;->c:Lqa;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lpz;->b:Lqe;

    invoke-virtual {v1, v0, v2, p1}, Lqa;->f(ILqe;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lpz;->c:Lqa;

    iget-object v0, v0, Lqa;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lpz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpz;->b:Lqe;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

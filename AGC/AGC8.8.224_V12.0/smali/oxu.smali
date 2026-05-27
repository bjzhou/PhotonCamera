.class public final Loxu;
.super Loox;


# instance fields
.field private final a:I

.field private final b:Lowe;


# direct methods
.method public constructor <init>(Lowe;I)V
    .locals 0

    invoke-direct {p0}, Loox;-><init>()V

    iput-object p1, p0, Loxu;->b:Lowe;

    iput p2, p0, Loxu;->a:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Loxu;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Loxu;->b:Lowe;

    iget v0, p0, Loxu;->a:I

    sget-object v1, Loxw;->e:Loxb;

    iget-object v2, p1, Lowe;->d:Llhz;

    invoke-virtual {v2, v0}, Llhz;->o(I)Loop;

    move-result-object v0

    invoke-virtual {v0, v1}, Loop;->c(Ljava/lang/Object;)V

    iget-object v0, p1, Lowe;->c:Loon;

    invoke-virtual {v0}, Loon;->b()I

    move-result v0

    sget v1, Loxw;->f:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lowe;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lowe;->c()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Loxu;->b:Lowe;

    iget v1, p0, Loxu;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancelSemaphoreAcquisitionHandler["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

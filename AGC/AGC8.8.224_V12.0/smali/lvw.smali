.class final Llvw;
.super Loln;

# interfaces
.implements Lomp;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.F250AirlockInternal$logOnFirstAndError$2"
    c = "F250AirlockInternal.kt"
    d = "invokeSuspend"
    e = {
        0x142
    }
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Llvy;

.field final synthetic d:Llzy;


# direct methods
.method public constructor <init>(Llvy;Llzy;Loku;)V
    .locals 0

    iput-object p1, p0, Llvw;->c:Llvy;

    iput-object p2, p0, Llvw;->d:Llzy;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Llvw;

    iget-object v0, p0, Llvw;->c:Llvy;

    iget-object v1, p0, Llvw;->d:Llzy;

    invoke-direct {p1, v0, v1, p3}, Llvw;-><init>(Llvy;Llzy;Loku;)V

    iput-object p2, p1, Llvw;->b:Ljava/lang/Object;

    sget-object p2, Lojk;->a:Lojk;

    invoke-virtual {p1, p2}, Llvw;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Llvw;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Llvw;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_0

    iget-object v1, p0, Llvw;->c:Llvy;

    iget-object v1, v1, Llvy;->a:Llzz;

    iget-object v2, p0, Llvw;->d:Llzy;

    sget-object v3, Lodt;->q:Lodt;

    check-cast p1, Ljava/lang/Throwable;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v2, v3, p1, v4, v5}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p1

    const/4 v2, 0x1

    iput v2, p0, Llvw;->a:I

    invoke-virtual {v1, p1, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

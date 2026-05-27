.class public final Ldrv;
.super Ljava/lang/Object;

# interfaces
.implements Ldsa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ldry;Lmqp;)Lnou;
    .locals 0

    new-instance p2, Ldse;

    invoke-interface {p1}, Ldry;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Ldse;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

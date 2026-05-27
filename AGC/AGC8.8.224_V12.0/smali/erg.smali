.class public final synthetic Lerg;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final synthetic a:Lerh;


# direct methods
.method public synthetic constructor <init>(Lerh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerg;->a:Lerh;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 3

    iget-object v0, p0, Lerg;->a:Lerh;

    iget-object v0, v0, Lerh;->a:Lnou;

    sget-object v1, Ldeo;->n:Ldeo;

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcodexlutenabled;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyd;


# instance fields
.field public final a:Loxv;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Loxv;

    invoke-direct {v1, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcodexlutenabled;->a:Loxv;

    return-void
.end method


# virtual methods
.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 2

    iget-object v0, p0, Lcodexlutenabled;->a:Loxv;

    invoke-virtual {v0, p1, p2}, Loxv;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    iget-object p2, p0, Lcodexlutenabled;->a:Loxv;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Loxv;->d(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final cM()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcodexlutenabled;->a:Loxv;

    invoke-virtual {v0}, Loxv;->cM()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class public final Leoh;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leoh;->a:Loiw;

    iput-object p2, p0, Leoh;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgkr;
    .locals 3

    iget-object v0, p0, Leoh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Leoh;->b:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lgkr;

    invoke-direct {v2, v0, v1}, Lgkr;-><init>(Ldhi;Landroid/content/Context;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leoh;->a()Lgkr;

    move-result-object v0

    return-object v0
.end method

.class public final Lcqw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqw;->a:Loiw;

    iput-object p2, p0, Lcqw;->b:Loiw;

    iput-object p3, p0, Lcqw;->c:Loiw;

    iput-object p4, p0, Lcqw;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Liac;
    .locals 5

    iget-object v0, p0, Lcqw;->a:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcqw;->b:Loiw;

    check-cast v1, Lcrn;

    invoke-virtual {v1}, Lcrn;->a()Lcrm;

    move-result-object v1

    iget-object v2, p0, Lcqw;->c:Loiw;

    check-cast v2, Lhhx;

    invoke-virtual {v2}, Lhhx;->a()Lmqp;

    move-result-object v2

    iget-object v3, p0, Lcqw;->d:Loiw;

    check-cast v3, Lhhx;

    invoke-virtual {v3}, Lhhx;->a()Lmqp;

    move-result-object v3

    new-instance v4, Liac;

    invoke-direct {v4, v0, v1, v2, v3}, Liac;-><init>(ZLcrm;Lmqp;Lmqp;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcqw;->a()Liac;

    move-result-object v0

    return-object v0
.end method

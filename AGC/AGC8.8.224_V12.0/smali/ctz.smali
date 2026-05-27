.class public final Lctz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctz;->a:Loiw;

    iput-object p2, p0, Lctz;->b:Loiw;

    iput-object p3, p0, Lctz;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcty;
    .locals 5

    iget-object v0, p0, Lctz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxb;

    iget-object v1, p0, Lctz;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuh;

    iget-object v2, p0, Lctz;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipk;

    new-instance v3, Lcty;

    sget-object v4, Lmpw;->a:Lmrq;

    invoke-static {v4}, Lmrg;->c(Lmrq;)Lmrg;

    move-result-object v4

    invoke-direct {v3, v0, v2, v1, v4}, Lcty;-><init>(Lhxb;Lipk;Ljuh;Lmrg;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lctz;->a()Lcty;

    move-result-object v0

    return-object v0
.end method

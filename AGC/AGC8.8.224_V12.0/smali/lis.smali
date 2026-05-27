.class public final Llis;
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

    iput-object p1, p0, Llis;->a:Loiw;

    iput-object p2, p0, Llis;->b:Loiw;

    iput-object p3, p0, Llis;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llir;
    .locals 2

    iget-object v0, p0, Llis;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    iget-object v0, p0, Llis;->b:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    iget-object v0, p0, Llis;->c:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Llir;

    invoke-direct {v1, v0}, Llir;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llis;->a()Llir;

    move-result-object v0

    return-object v0
.end method

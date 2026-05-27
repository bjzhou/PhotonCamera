.class public final Lean;
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

    iput-object p1, p0, Lean;->a:Loiw;

    iput-object p2, p0, Lean;->b:Loiw;

    iput-object p3, p0, Lean;->c:Loiw;

    iput-object p4, p0, Lean;->d:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;)Lean;
    .locals 1

    new-instance v0, Lean;

    invoke-direct {v0, p0, p1, p2, p3}, Lean;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkc;
    .locals 3

    iget-object v0, p0, Lean;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgsm;

    iget-object v0, p0, Lean;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lean;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    iget-object v1, p0, Lean;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lecy;

    new-instance v1, Lbkc;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbkc;-><init>(Ldhi;[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lean;->b()Lbkc;

    move-result-object v0

    return-object v0
.end method

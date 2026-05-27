.class public final Ldis;
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

    iput-object p1, p0, Ldis;->a:Loiw;

    iput-object p2, p0, Ldis;->b:Loiw;

    iput-object p3, p0, Ldis;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldir;
    .locals 8

    iget-object v0, p0, Ldis;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkgd;

    iget-object v0, p0, Ldis;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/SharedPreferences;

    iget-object v0, p0, Ldis;->c:Loiw;

    check-cast v0, Ldip;

    invoke-virtual {v0}, Ldip;->a()Lcvr;

    move-result-object v4

    invoke-static {}, Lduq;->a()Ldin;

    move-result-object v5

    new-instance v0, Ldir;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldir;-><init>(Lkgd;Landroid/content/SharedPreferences;Lcvr;Ldin;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldis;->a()Ldir;

    move-result-object v0

    return-object v0
.end method

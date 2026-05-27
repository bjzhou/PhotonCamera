.class public final Lign;
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

    iput-object p1, p0, Lign;->a:Loiw;

    iput-object p2, p0, Lign;->b:Loiw;

    iput-object p3, p0, Lign;->c:Loiw;

    iput-object p4, p0, Lign;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ligm;
    .locals 5

    iget-object v0, p0, Lign;->a:Loiw;

    check-cast v0, Lelq;

    invoke-virtual {v0}, Lelq;->a()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lign;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    iget-object v2, p0, Lign;->c:Loiw;

    check-cast v2, Ljzo;

    invoke-virtual {v2}, Ljzo;->a()Lklj;

    move-result-object v2

    iget-object v3, p0, Lign;->d:Loiw;

    check-cast v3, Lfjj;

    invoke-virtual {v3}, Lfjj;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ligm;

    invoke-direct {v4, v0, v1, v2, v3}, Ligm;-><init>(Landroid/view/WindowManager;Ldhi;Lklj;Ljava/lang/String;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lign;->a()Ligm;

    move-result-object v0

    return-object v0
.end method

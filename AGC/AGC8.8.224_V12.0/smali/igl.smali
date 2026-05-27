.class public final Ligl;
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

    iput-object p1, p0, Ligl;->a:Loiw;

    iput-object p2, p0, Ligl;->b:Loiw;

    iput-object p3, p0, Ligl;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ligk;
    .locals 4

    iget-object v0, p0, Ligl;->a:Loiw;

    check-cast v0, Lelq;

    invoke-virtual {v0}, Lelq;->a()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Ligl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    iget-object v2, p0, Ligl;->c:Loiw;

    check-cast v2, Lfjj;

    invoke-virtual {v2}, Lfjj;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ligk;

    invoke-direct {v3, v0, v1, v2}, Ligk;-><init>(Landroid/view/WindowManager;Ldhi;Ljava/lang/String;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ligl;->a()Ligk;

    move-result-object v0

    return-object v0
.end method

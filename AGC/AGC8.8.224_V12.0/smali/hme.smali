.class public final Lhme;
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

    iput-object p1, p0, Lhme;->a:Loiw;

    iput-object p2, p0, Lhme;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhmd;
    .locals 3

    iget-object v0, p0, Lhme;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuh;

    iget-object v1, p0, Lhme;->b:Loiw;

    check-cast v1, Lelp;

    invoke-virtual {v1}, Lelp;->a()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Lhmd;

    invoke-direct {v2, v0, v1}, Lhmd;-><init>(Ljuh;Landroid/view/Window;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhme;->a()Lhmd;

    move-result-object v0

    return-object v0
.end method

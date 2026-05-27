.class public final Ldwo;
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

    iput-object p1, p0, Ldwo;->a:Loiw;

    iput-object p2, p0, Ldwo;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldww;
    .locals 3

    iget-object v0, p0, Ldwo;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v1, p0, Ldwo;->b:Loiw;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v2, 0x7f0b0162

    invoke-virtual {v0, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    check-cast v1, Lihj;

    invoke-virtual {v1}, Lihj;->a()Lihg;

    move-result-object v1

    iget-object v1, v1, Lihg;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->c(Likj;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldwo;->a()Ldww;

    move-result-object v0

    return-object v0
.end method

.class public final Lihl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lihi;


# direct methods
.method public constructor <init>(Lihi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihl;->a:Lihi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/camera/ui/views/GradientBar;
    .locals 1

    iget-object v0, p0, Lihl;->a:Lihi;

    iget-object v0, v0, Lihi;->b:Lihg;

    iget-object v0, v0, Lihg;->n:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/GradientBar;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lihl;->a()Lcom/google/android/apps/camera/ui/views/GradientBar;

    move-result-object v0

    return-object v0
.end method

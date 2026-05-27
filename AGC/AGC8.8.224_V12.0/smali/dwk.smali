.class public final Ldwk;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Llij;


# direct methods
.method public constructor <init>(Llij;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwk;->a:Llij;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;
    .locals 1

    iget-object v0, p0, Ldwk;->a:Llij;

    iget-object v0, v0, Llij;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldwk;->a()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    move-result-object v0

    return-object v0
.end method

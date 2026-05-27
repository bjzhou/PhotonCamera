.class public final Ldwn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Llij;


# direct methods
.method public constructor <init>(Llij;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwn;->a:Llij;

    return-void
.end method

.method public static b(Llij;)Ldwc;
    .locals 0

    iget-object p0, p0, Llij;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b:Ldwc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final a()Ldwc;
    .locals 1

    iget-object v0, p0, Ldwn;->a:Llij;

    invoke-static {v0}, Ldwn;->b(Llij;)Ldwc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldwn;->a()Ldwc;

    move-result-object v0

    return-object v0
.end method

.class public final Lhli;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Ljuh;

.field public final c:Lfbz;

.field public d:Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;

.field public e:Lhlv;

.field public final f:Lhlw;

.field public final g:Llij;

.field private final h:Ldqx;


# direct methods
.method public constructor <init>(Llij;Lhlw;Ldqx;Ljava/util/concurrent/ScheduledExecutorService;Ljuh;Lfbz;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhli;->g:Llij;

    iput-object p2, p0, Lhli;->f:Lhlw;

    iput-object p3, p0, Lhli;->h:Ldqx;

    iput-object p4, p0, Lhli;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lhli;->b:Ljuh;

    iput-object p6, p0, Lhli;->c:Lfbz;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lhli;->e:Lhlv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhli;->h:Ldqx;

    invoke-virtual {v1, v0}, Ldqx;->s(Lhlv;)Lhln;

    move-result-object v1

    iget-object v2, p0, Lhli;->d:Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;

    iget-wide v3, v0, Lhlv;->b:J

    iget-wide v5, v0, Lhlv;->c:J

    iget v0, v1, Lhln;->a:I

    iget v1, v1, Lhln;->b:I

    iput-wide v3, v2, Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;->a:J

    iput-wide v5, v2, Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;->b:J

    iput v0, v2, Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;->c:I

    iput v1, v2, Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;->d:I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;->k()V

    :cond_0
    return-void
.end method

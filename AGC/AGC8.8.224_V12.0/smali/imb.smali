.class public final Limb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lima;

.field public final b:Lima;

.field public final c:Lima;

.field public final d:Lima;

.field public e:F

.field public f:F

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limb;->e:F

    iput v0, p0, Limb;->f:F

    iput v0, p0, Limb;->g:F

    iput v0, p0, Limb;->h:F

    new-instance v0, Lima;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lima;-><init>(I)V

    iput-object v0, p0, Limb;->a:Lima;

    new-instance v0, Lima;

    invoke-direct {v0, v1}, Lima;-><init>(I)V

    iput-object v0, p0, Limb;->b:Lima;

    new-instance v0, Lima;

    invoke-direct {v0, v1}, Lima;-><init>(I)V

    iput-object v0, p0, Limb;->c:Lima;

    new-instance v0, Lima;

    invoke-direct {v0, v1}, Lima;-><init>(I)V

    iput-object v0, p0, Limb;->d:Lima;

    return-void
.end method

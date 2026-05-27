.class public final Lexd;
.super Ljava/lang/Object;


# instance fields
.field public final a:[F

.field public b:[F

.field public final c:Limk;

.field public final d:Limk;

.field public e:F

.field public final f:Z

.field public g:Z

.field public h:I

.field public i:Lltf;

.field public j:Lltf;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lexd;->a:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lexd;->b:[F

    new-instance v0, Limk;

    invoke-direct {v0}, Limk;-><init>()V

    iput-object v0, p0, Lexd;->c:Limk;

    new-instance v0, Limk;

    invoke-direct {v0}, Limk;-><init>()V

    iput-object v0, p0, Lexd;->d:Limk;

    const/4 v0, 0x0

    iput v0, p0, Lexd;->e:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lexd;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lexd;->g:Z

    iput v0, p0, Lexd;->h:I

    return-void
.end method

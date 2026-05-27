.class public final Lhdi;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/android/apps/camera/smarts/SmartsChipView;

.field public b:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

.field public c:Lgft;

.field public d:Lell;

.field public e:Ljava/util/Map;

.field public final f:Ljuh;

.field public final g:Lfbz;

.field public final h:Z

.field public final i:Ldja;

.field public final j:Ljew;

.field public final k:Ligo;


# direct methods
.method public constructor <init>(Ljuh;Lfbz;Ljew;Ldja;Ligo;Ldhi;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdi;->f:Ljuh;

    iput-object p2, p0, Lhdi;->g:Lfbz;

    iput-object p3, p0, Lhdi;->j:Ljew;

    iput-object p4, p0, Lhdi;->i:Ldja;

    iput-object p5, p0, Lhdi;->k:Ligo;

    sget-object p1, Ldho;->aj:Ldhj;

    invoke-interface {p6, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lhdi;->h:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lhdi;->f:Ljuh;

    new-instance v1, Lhbi;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lhbi;-><init>(Lhdi;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.class public final Lczh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# instance fields
.field public final c:Lhrz;

.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public g:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

.field public h:Lczj;

.field public i:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

.field public j:Lczj;

.field public k:Landroid/view/View;

.field public l:Z

.field public m:Z

.field public final n:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://www.gstatic.com/aiux/gca/useredu/mountain_original.mp4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lczh;->a:Landroid/net/Uri;

    const-string v0, "https://www.gstatic.com/aiux/gca/useredu/mountain_cinematic.mp4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lczh;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lhrz;Ligo;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput-boolean p6, p0, Lczh;->l:Z

    iput-boolean p6, p0, Lczh;->m:Z

    iput-object p1, p0, Lczh;->c:Lhrz;

    iput-object p2, p0, Lczh;->n:Ligo;

    iput-object p3, p0, Lczh;->d:Landroid/content/Context;

    iput-object p4, p0, Lczh;->e:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lczh;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lczh;->k:Landroid/view/View;

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lczh;->k:Landroid/view/View;

    const v2, 0x7f0b00ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lczh;->h:Lczj;

    invoke-virtual {p1}, Lczj;->a()V

    iget-object p1, p0, Lczh;->j:Lczj;

    invoke-virtual {p1}, Lczj;->a()V

    return-void
.end method

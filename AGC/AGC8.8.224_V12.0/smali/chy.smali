.class public final synthetic Lchy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lchy;

.field public static final synthetic b:Lchy;

.field public static final synthetic c:Lchy;

.field public static final synthetic d:Lchy;

.field public static final synthetic e:Lchy;

.field public static final synthetic f:Lchy;

.field public static final synthetic g:Lchy;

.field public static final synthetic h:Lchy;

.field public static final synthetic i:Lchy;

.field public static final synthetic j:Lchy;

.field public static final synthetic k:Lchy;

.field public static final synthetic l:Lchy;

.field public static final synthetic m:Lchy;

.field public static final synthetic n:Lchy;

.field public static final synthetic o:Lchy;

.field public static final synthetic p:Lchy;

.field public static final synthetic q:Lchy;

.field public static final synthetic r:Lchy;


# instance fields
.field private final synthetic s:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lchy;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->r:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->q:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->p:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->o:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->n:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->m:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->l:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->k:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->j:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->i:Lchy;

    new-instance v0, Lchy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->h:Lchy;

    new-instance v0, Lchy;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->g:Lchy;

    new-instance v0, Lchy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->f:Lchy;

    new-instance v0, Lchy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->e:Lchy;

    new-instance v0, Lchy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->d:Lchy;

    new-instance v0, Lchy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->c:Lchy;

    new-instance v0, Lchy;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->b:Lchy;

    new-instance v0, Lchy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sput-object v0, Lchy;->a:Lchy;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lchy;->s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lchy;->s:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lffp;->a:Lnak;

    sget-boolean v0, Lfgk;->a:Z

    sget-boolean v0, Lfgk;->a:Z

    return-void

    :pswitch_1
    sget v0, Lery;->a:I

    const-string v0, "loadJniLibraries"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lemz;->a:Lmvv;

    invoke-virtual {v0, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lkak;->a(Ljava/lang/Class;)V

    invoke-static {}, Lemq;->b()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_2
    sget v0, Lery;->a:I

    const-string v0, "preloadMediaCodecList"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroid/media/MediaCodecList;

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :pswitch_3
    return-void

    :pswitch_4
    invoke-static {}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->savePdCacheImpl()V

    :pswitch_5
    return-void

    :pswitch_6
    const/16 v0, -0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :pswitch_7
    return-void

    :pswitch_8
    sget-object v0, Lcie;->a:Lnak;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

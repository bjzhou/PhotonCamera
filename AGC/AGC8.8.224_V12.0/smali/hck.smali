.class public final synthetic Lhck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lhck;

.field public static final synthetic b:Lhck;

.field public static final synthetic c:Lhck;

.field public static final synthetic d:Lhck;

.field public static final synthetic e:Lhck;

.field public static final synthetic f:Lhck;

.field public static final synthetic g:Lhck;

.field public static final synthetic h:Lhck;

.field public static final synthetic i:Lhck;

.field public static final synthetic j:Lhck;

.field public static final synthetic k:Lhck;

.field public static final synthetic l:Lhck;

.field public static final synthetic m:Lhck;


# instance fields
.field private final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhck;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->m:Lhck;

    new-instance v0, Lhck;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->l:Lhck;

    new-instance v0, Lhck;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->k:Lhck;

    new-instance v0, Lhck;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->j:Lhck;

    new-instance v0, Lhck;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->i:Lhck;

    new-instance v0, Lhck;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->h:Lhck;

    new-instance v0, Lhck;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->g:Lhck;

    new-instance v0, Lhck;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->f:Lhck;

    new-instance v0, Lhck;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->e:Lhck;

    new-instance v0, Lhck;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->d:Lhck;

    new-instance v0, Lhck;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->c:Lhck;

    new-instance v0, Lhck;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->b:Lhck;

    new-instance v0, Lhck;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    sput-object v0, Lhck;->a:Lhck;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lhck;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lhck;->n:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :pswitch_2
    return-void

    :pswitch_3
    sget-object v0, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    return-void

    :pswitch_4
    sget-object v0, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    return-void

    :pswitch_5
    sget-object v0, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    return-void

    :pswitch_6
    sget-object v0, Lcom/google/android/apps/camera/toast/ToastView;->d:Lj$/time/Duration;

    :pswitch_7
    return-void

    :pswitch_8
    sget v0, Lcom/google/android/apps/camera/toast/EducationToastView;->c:I

    return-void

    :pswitch_9
    sget v0, Lcom/google/android/apps/camera/toast/EducationToastView;->c:I

    :pswitch_a
    return-void

    :pswitch_b
    invoke-static {}, Ljuh;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lavb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final synthetic a:Lavb;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lavb;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lavb;-><init>(I)V

    sput-object v0, Lavb;->a:Lavb;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lavb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget p1, p0, Lavb;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    sget p1, Livw;->a:I

    return-void

    :pswitch_0
    throw v0

    :pswitch_1
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

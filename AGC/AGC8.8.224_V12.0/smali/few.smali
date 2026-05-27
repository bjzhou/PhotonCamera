.class public final synthetic Lfew;
.super Ljava/lang/Object;

# interfaces
.implements Lkrh;


# static fields
.field public static final synthetic a:Lfew;

.field public static final synthetic b:Lfew;


# instance fields
.field private final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lfew;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfew;-><init>(I)V

    sput-object v0, Lfew;->b:Lfew;

    new-instance v0, Lfew;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfew;-><init>(I)V

    sput-object v0, Lfew;->a:Lfew;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfew;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, Lfew;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

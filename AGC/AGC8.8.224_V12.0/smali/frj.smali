.class public final synthetic Lfrj;
.super Ljava/lang/Object;

# interfaces
.implements Llcj;


# static fields
.field public static final synthetic a:Lfrj;

.field public static final synthetic b:Lfrj;

.field public static final synthetic c:Lfrj;

.field public static final synthetic d:Lfrj;

.field public static final synthetic e:Lfrj;

.field public static final synthetic f:Lfrj;

.field public static final synthetic g:Lfrj;

.field public static final synthetic h:Lfrj;


# instance fields
.field private final synthetic i:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lfrj;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->h:Lfrj;

    new-instance v0, Lfrj;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->g:Lfrj;

    new-instance v0, Lfrj;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->f:Lfrj;

    new-instance v0, Lfrj;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->e:Lfrj;

    new-instance v0, Lfrj;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->d:Lfrj;

    new-instance v0, Lfrj;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->c:Lfrj;

    new-instance v0, Lfrj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->b:Lfrj;

    new-instance v0, Lfrj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfrj;-><init>(I)V

    sput-object v0, Lfrj;->a:Lfrj;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfrj;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lfrj;->i:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "drawBuilderOnCanvas"

    return-object v0

    :pswitch_0
    const-string v0, "glFlush"

    return-object v0

    :pswitch_1
    const-string v0, "[unnamed]"

    return-object v0

    :pswitch_2
    const-string v0, "close"

    return-object v0

    :pswitch_3
    const-string v0, "focusCanvasAndSubmit"

    return-object v0

    :pswitch_4
    const-string v0, "readCanvasInto(RGBA8888)"

    return-object v0

    :pswitch_5
    const-string v0, "mtsPresentationTime"

    return-object v0

    :pswitch_6
    sget-object v0, Lenn;->a:Lnak;

    const-string v0, "astroPresentationTime"

    return-object v0

    :pswitch_7
    const-string v0, "mtsWaitForCodecStart"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Llbl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Llbl;

.field public static final synthetic b:Llbl;

.field public static final synthetic c:Llbl;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Llbl;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Llbl;-><init>(I)V

    sput-object v0, Llbl;->c:Llbl;

    new-instance v0, Llbl;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Llbl;-><init>(I)V

    sput-object v0, Llbl;->b:Llbl;

    new-instance v0, Llbl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llbl;-><init>(I)V

    sput-object v0, Llbl;->a:Llbl;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llbl;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Llbl;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Span was closed by an invalid call to SpanEndSignal.run()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-static {}, Lloz;->g()V

    :pswitch_3
    return-void

    :pswitch_4
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

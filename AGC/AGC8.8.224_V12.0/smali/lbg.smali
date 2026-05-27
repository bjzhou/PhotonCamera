.class final Llbg;
.super Ljava/lang/Object;

# interfaces
.implements Lkzg;


# static fields
.field public static final a:Llbg;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llbg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llbg;-><init>(I)V

    sput-object v0, Llbg;->a:Llbg;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Llbg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lkzc;
    .locals 0

    iget p2, p0, Llbg;->b:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lldc;

    invoke-virtual {p1}, Llbk;->c()Llcv;

    move-result-object p1

    check-cast p1, Llcn;

    invoke-interface {p1}, Llcn;->a()Lkzf;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lkyc;

    invoke-interface {p1}, Lkyc;->a()Lkzf;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lbvl;
.super Ljava/lang/Object;

# interfaces
.implements Lbva;


# static fields
.field public static final a:Lbvl;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbvl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbvl;-><init>(I[B)V

    sput-object v0, Lbvl;->a:Lbvl;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbvl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lbvl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lbve;)Lbuz;
    .locals 3

    iget v0, p0, Lbvl;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lbuq;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lbup;

    invoke-virtual {p1, v0, v1}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {v2, p1, v0}, Lbup;-><init>(Lbuz;I)V

    return-object v2

    :pswitch_0
    sget-object p1, Lbvd;->a:Lbvd;

    return-object p1

    :pswitch_1
    const-class v0, Lbuq;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lbvm;

    invoke-virtual {p1, v0, v1}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    invoke-direct {v2, p1}, Lbvm;-><init>(Lbuz;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

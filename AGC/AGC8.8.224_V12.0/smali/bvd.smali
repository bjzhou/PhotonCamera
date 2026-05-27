.class public final Lbvd;
.super Ljava/lang/Object;

# interfaces
.implements Lbuz;


# static fields
.field public static final a:Lbvd;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbvd;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbvd;-><init>(I[B)V

    sput-object v0, Lbvd;->a:Lbvd;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbvd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lbvd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lbvd;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILbqf;)Lva;
    .locals 1

    iget p2, p0, Lbvd;->b:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lva;

    new-instance p3, Lcah;

    invoke-direct {p3, p1}, Lcah;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lbvh;

    const/4 v0, 0x0

    invoke-direct {p4, p1, v0}, Lbvh;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3, p4}, Lva;-><init>(Lbqb;Lbqo;)V

    return-object p2

    :pswitch_0
    new-instance p2, Lva;

    new-instance p3, Lcah;

    invoke-direct {p3, p1}, Lcah;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lbug;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lbug;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3, p4}, Lva;-><init>(Lbqb;Lbqo;)V

    return-object p2

    :pswitch_1
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

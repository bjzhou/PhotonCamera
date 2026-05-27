.class public final enum Lgyt;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgyt;

.field public static final enum b:Lgyt;

.field private static final synthetic d:[Lgyt;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgyt;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgyt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgyt;->a:Lgyt;

    new-instance v1, Lgyt;

    const-string v3, "ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgyt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgyt;->b:Lgyt;

    const/4 v3, 0x2

    new-array v3, v3, [Lgyt;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lgyt;->d:[Lgyt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgyt;->c:I

    return-void
.end method

.method public static a(I)Lgyt;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lgyt;->a:Lgyt;

    return-object p0

    :pswitch_0
    sget-object p0, Lgyt;->b:Lgyt;

    return-object p0

    :pswitch_1
    sget-object p0, Lgyt;->a:Lgyt;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lgyt;
    .locals 1

    sget-object v0, Lgyt;->d:[Lgyt;

    invoke-virtual {v0}, [Lgyt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgyt;

    return-object v0
.end method

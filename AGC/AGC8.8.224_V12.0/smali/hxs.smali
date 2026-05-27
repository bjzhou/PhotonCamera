.class public final enum Lhxs;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhxs;

.field public static final enum b:Lhxs;

.field public static final enum c:Lhxs;

.field public static final enum d:Lhxs;

.field private static final synthetic f:[Lhxs;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lhxs;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lhxs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhxs;->a:Lhxs;

    new-instance v1, Lhxs;

    const-string v3, "THREE_BY_THREE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lhxs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lhxs;->b:Lhxs;

    new-instance v3, Lhxs;

    const-string v5, "FOUR_BY_FOUR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lhxs;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lhxs;->c:Lhxs;

    new-instance v5, Lhxs;

    const-string v7, "GOLDEN_RATIO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lhxs;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lhxs;->d:Lhxs;

    const/4 v7, 0x4

    new-array v7, v7, [Lhxs;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lhxs;->f:[Lhxs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lhxs;->e:I

    return-void
.end method

.method public static a(I)Lhxs;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lhxs;->a:Lhxs;

    return-object p0

    :pswitch_0
    sget-object p0, Lhxs;->d:Lhxs;

    return-object p0

    :pswitch_1
    sget-object p0, Lhxs;->c:Lhxs;

    return-object p0

    :pswitch_2
    sget-object p0, Lhxs;->b:Lhxs;

    return-object p0

    :pswitch_3
    sget-object p0, Lhxs;->a:Lhxs;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lhxs;
    .locals 1

    sget-object v0, Lhxs;->f:[Lhxs;

    invoke-virtual {v0}, [Lhxs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhxs;

    return-object v0
.end method

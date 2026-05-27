.class public final enum Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

.field public static final enum b:Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

.field public static final enum c:Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

.field private static final synthetic d:[Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;->a:Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    new-instance v1, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;->b:Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    new-instance v3, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;->c:Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;->d:[Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;
    .locals 1

    sget-object v0, Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;->d:[Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    invoke-virtual {v0}, [Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/wearable/watchface/decomposition/ColorStringComponent$Alignment;

    return-object v0
.end method

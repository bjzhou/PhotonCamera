.class public final enum Lj$/util/stream/Collector$Characteristics;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Characteristics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/util/stream/Collector$Characteristics;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONCURRENT:Lj$/util/stream/Collector$Characteristics;

.field public static final enum IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

.field public static final enum UNORDERED:Lj$/util/stream/Collector$Characteristics;

.field private static final synthetic a:[Lj$/util/stream/Collector$Characteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lj$/util/stream/Collector$Characteristics;

    const-string v4, "CONCURRENT"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    new-instance v4, Lj$/util/stream/Collector$Characteristics;

    const-string v5, "UNORDERED"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    new-instance v5, Lj$/util/stream/Collector$Characteristics;

    const-string v6, "IDENTITY_FINISH"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    const/4 v6, 0x3

    new-array v6, v6, [Lj$/util/stream/Collector$Characteristics;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Lj$/util/stream/Collector$Characteristics;->a:[Lj$/util/stream/Collector$Characteristics;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/Collector$Characteristics;
    .locals 1

    const-class v0, Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/stream/Collector$Characteristics;

    return-object p0
.end method

.method public static values()[Lj$/util/stream/Collector$Characteristics;
    .locals 1

    sget-object v0, Lj$/util/stream/Collector$Characteristics;->a:[Lj$/util/stream/Collector$Characteristics;

    invoke-virtual {v0}, [Lj$/util/stream/Collector$Characteristics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/Collector$Characteristics;

    return-object v0
.end method

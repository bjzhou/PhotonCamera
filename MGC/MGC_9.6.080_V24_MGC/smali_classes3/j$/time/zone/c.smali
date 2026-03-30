.class public final enum Lj$/time/zone/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum STANDARD:Lj$/time/zone/c;

.field public static final enum UTC:Lj$/time/zone/c;

.field public static final enum WALL:Lj$/time/zone/c;

.field private static final synthetic a:[Lj$/time/zone/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lj$/time/zone/c;

    const-string v4, "UTC"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/time/zone/c;->UTC:Lj$/time/zone/c;

    new-instance v4, Lj$/time/zone/c;

    const-string v5, "WALL"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj$/time/zone/c;->WALL:Lj$/time/zone/c;

    new-instance v5, Lj$/time/zone/c;

    const-string v6, "STANDARD"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/time/zone/c;->STANDARD:Lj$/time/zone/c;

    const/4 v6, 0x3

    new-array v6, v6, [Lj$/time/zone/c;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Lj$/time/zone/c;->a:[Lj$/time/zone/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/zone/c;
    .locals 1

    const-class v0, Lj$/time/zone/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/zone/c;

    return-object p0
.end method

.method public static values()[Lj$/time/zone/c;
    .locals 1

    sget-object v0, Lj$/time/zone/c;->a:[Lj$/time/zone/c;

    invoke-virtual {v0}, [Lj$/time/zone/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/zone/c;

    return-object v0
.end method

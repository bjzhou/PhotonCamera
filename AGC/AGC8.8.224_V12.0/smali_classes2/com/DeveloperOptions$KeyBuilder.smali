.class Lcom/DeveloperOptions$KeyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/DeveloperOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEnabledKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;
    .locals 1

    new-instance v0, Ldhj;

    invoke-direct {v0, p0, p1}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildFloatKey(Ljava/lang/String;Ljava/lang/String;)Ldhj;
    .locals 1

    new-instance v0, Ldhj;

    invoke-direct {v0, p0, p1}, Ldhj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildReleaseIntKey(Ljava/lang/String;Ljava/lang/String;Lmwn;Lmwn;)Ldhk;
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lmza;->a:Lmza;

    :cond_0
    new-instance v0, Ldhk;

    invoke-direct {v0, p0, p1, p2}, Ldhk;-><init>(Ljava/lang/String;Ljava/lang/String;Lmwn;)V

    iput-object p3, v0, Ldhk;->optionSet:Lmwn;

    return-object v0
.end method

.class Lcom/agc/glide/load/engine/EngineKeyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildKey(Ljava/lang/Object;Lcom/agc/glide/load/Key;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/EngineKey;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/Key;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/engine/EngineKey;"
        }
    .end annotation

    new-instance v9, Lcom/agc/glide/load/engine/EngineKey;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/agc/glide/load/engine/EngineKey;-><init>(Ljava/lang/Object;Lcom/agc/glide/load/Key;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/Options;)V

    return-object v9
.end method

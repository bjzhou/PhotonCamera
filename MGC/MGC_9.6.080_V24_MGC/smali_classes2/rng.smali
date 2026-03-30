.class public final Lrng;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v1, Lrng;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v5, "The request that was sent by the app is malformed."

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v8, -0x8

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "ERROR_INTERNAL_ERROR"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    :goto_a
    const-string v3, "An unknown error occurred."

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_b
    const-string v13, "An internal error happened in the Play Store."

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    const/16 v10, -0xa

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_11
    const-string v4, "The API is not available on this device."

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v9, -0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "ERROR_API_NOT_AVAILABLE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v7, "The download/install is not allowed, due to the current device state (e.g. low battery, low disk space, ...)."

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v8, "The install/update has not been (fully) downloaded yet."

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1a
    const-string v0, "ERROR_DOWNLOAD_NOT_PRESENT"

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1b
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "ERROR_INSTALL_NOT_ALLOWED"

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1d
    const-string v10, "The Play Store app is either not installed or not the official version."

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v4, -0x4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_23
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    const-string v0, "ERROR_UNKNOWN"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_26
    const/16 v12, -0x64

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v6, -0x6

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_28
    const-string v11, "The app is not owned by any user on this device. An app is \"owned\" if it has been acquired from Play."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v7, -0x7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v12, "The request failed because the device does not have an active internet connection."

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "ERROR_INSTALL_UNAVAILABLE"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v0, "ERROR_NETWORK_ERROR"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "ERROR_APP_NOT_OWNED"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_30
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v11, -0xb

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_32
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_34
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_25

    nop

    nop

    :goto_35
    const-string v0, "ERROR_INSTALL_IN_PROGRESS"

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_37
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_38
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_39
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1a

    nop

    nop

    :goto_3b
    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v2, -0x2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v5, -0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_43
    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v3, -0x3

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_45
    const-string v0, "ERROR_PLAY_STORE_NOT_FOUND"

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v6, "The install is unavailable to this user or device."

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_47
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_49
    const-string v0, "ERROR_INVALID_REQUEST"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v9, "The install is already in progress and there is no UI flow to resume."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sput-object v0, Lrng;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_51
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

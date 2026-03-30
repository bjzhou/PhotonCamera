.class public final Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field public a:I

.field public final b:Ljava/util/Map;

.field public final c:Landroid/os/RemoteCallbackList;

.field private final d:Lefg;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    new-instance v0, Lefl;

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

    :goto_1
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lefg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->d:Lefg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Lefg;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0}, Lefl;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->d:Lefg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

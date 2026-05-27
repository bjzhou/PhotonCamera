.class public final synthetic Lick;
.super Ljava/lang/Object;

# interfaces
.implements Lice;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Licn;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Licn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lick;->a:Ljava/util/Map;

    iput-object p2, p0, Lick;->b:Licn;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iget-object p1, p0, Lick;->a:Ljava/util/Map;

    iget-object p2, p0, Lick;->b:Licn;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

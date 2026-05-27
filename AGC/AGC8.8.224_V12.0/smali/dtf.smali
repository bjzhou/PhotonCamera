.class public final synthetic Ldtf;
.super Ljava/lang/Object;

# interfaces
.implements Ldtd;


# instance fields
.field public final synthetic a:Ldth;

.field public final synthetic b:Ldth;


# direct methods
.method public synthetic constructor <init>(Ldth;Ldth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldtf;->a:Ldth;

    iput-object p2, p0, Ldtf;->b:Ldth;

    return-void
.end method


# virtual methods
.method public final a(J)Ldti;
    .locals 1

    new-instance v0, Ldtg;

    invoke-direct {v0, p1, p2}, Ldtg;-><init>(J)V

    return-object v0
.end method

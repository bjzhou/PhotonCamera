.class public final Lkio;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkeq;

.field public final b:Lkbx;

.field public final c:Lkip;

.field public final d:Lkjn;

.field public final e:Ljuf;

.field public final f:Lkbc;

.field public final g:Lkaq;

.field public final h:Lkjc;

.field public final i:Landroid/os/Handler;

.field public j:Lkin;

.field public final k:Lkil;

.field private final l:Lloi;


# direct methods
.method public constructor <init>(Lkeq;Lkbx;Lkip;Lkjn;Landroid/os/Handler;Lkjc;Ljuf;Lkbc;Lkaq;Lloi;Lkil;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkio;->a:Lkeq;

    iput-object p2, p0, Lkio;->b:Lkbx;

    iput-object p3, p0, Lkio;->c:Lkip;

    iput-object p4, p0, Lkio;->d:Lkjn;

    iput-object p5, p0, Lkio;->i:Landroid/os/Handler;

    iput-object p6, p0, Lkio;->h:Lkjc;

    iput-object p7, p0, Lkio;->e:Ljuf;

    iput-object p8, p0, Lkio;->f:Lkbc;

    iput-object p10, p0, Lkio;->l:Lloi;

    const-string p1, "CameraOpener"

    invoke-interface {p9, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkio;->g:Lkaq;

    iput-object p11, p0, Lkio;->k:Lkil;

    return-void
.end method


# virtual methods
.method public final a(Lkjc;Landroid/os/Handler;)Lkiq;
    .locals 12

    new-instance v11, Lkiq;

    iget-object v2, p0, Lkio;->d:Lkjn;

    iget-object v4, p0, Lkio;->f:Lkbc;

    iget-object v5, p0, Lkio;->g:Lkaq;

    iget-object v6, p0, Lkio;->l:Lloi;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v10}, Lkiq;-><init>(Lkjc;Lkjn;Landroid/os/Handler;Lkbc;Lkaq;Lloi;[B[B[B[B)V

    return-object v11
.end method
